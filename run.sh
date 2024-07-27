source /data/secrets

if [ -z "$CART_HOST" -o -z "$CART_PORT" -o -z "$USER_HOST" -o -z "$USER_PORT" -o -z "$AMQP_HOST" -o -z "$AMQP_USER" -o -z "$AMQP_PASS" ]; then
  echo Environment Variables is mising
  exit 1
fi

uwsgi --ini payment.ini

