 <?php
require_once "services/Session.php";
require_once 'services/utils.php';
Session::start();


// Nous appelons l'autoloader pour avoir accès à Stripe
require_once 'vendor/autoload.php';
require_once "models/Order.php";
$orderM=new Order();
$order=$orderM->findAll();
$lastOrder = end($order);
$total=floatval($lastOrder['total']);
$orderId=$lastOrder['id'];
// Nous instancions Stripe en indiquand la clé privée, pour prouver que nous sommes bien à l'origine de cette demande
\Stripe\Stripe::setApiKey('sk_test_51K6CCbDqMESBrmee4xMmOa2m00DzA0gco8TTLElxqN0VgFsmMIBC6PZxa6zsXg4YcOCiUMwzVyxkLHcJPPn8Jnx700H4ooSkFV');

// Nous créons l'intention de paiement et stockons la réponse dans la variable $intent
$intent = \Stripe\PaymentIntent::create([
// Le prix doit être transmis en centimes
    'amount' => $total*100,
    'currency' => 'eur',
    'payment_method_types' => ['card'],
    'statement_descriptor' => 'Custom descriptor',
    'setup_future_usage' => 'on_session',
    'metadata' => [
            'order_id' => $orderId,
    ],
    ]);
// echo json_encode(array('client_secret' => $intent->client_secret));
$pagePath = 'paiement';

// Rendu de la vue
render(__DIR__."/views/$pagePath", compact('orderM','order','lastOrder','total','orderId','intent'));