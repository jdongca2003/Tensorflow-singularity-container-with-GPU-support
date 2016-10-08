import tensorflow as tf

msg = tf.constant('Hi, TensorFlow')
sess = tf.Session()
print(sess.run(msg))
