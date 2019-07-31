.. CryptoPay documentation master file, created by
   sphinx-quickstart on Tue Jul 23 21:38:05 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to CryptoPay's documentation!
=====================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

**CryptoPay** is a pretty simple library for `donations and payments <http://cryptopay.click>`_ written in Python 3.7. It helps you to receive donations and payments the fastest way.

Installing
----------

.. code-block::
   python

   pip install cryptopay


Quickstart
----------

.. code-block::

   from cryptopay import Application

   def on_success_payment(user_id, item_id):
      add_item_to_user(user_id, item_id)

   app = Application('APP_TOKEN', callback=on_success_payment)

   app.create_payment(symbol='eth test', data={'user_id': 42, 'target_amount': 0.12, 'item_id': 123})


Payment types
-------------

There are system variables: ``donated``, ``fixed_amount``. Please do not pass them to your data, all these variables will be reassigned.

Use following data keywords:

- ``target_amount`` if you want to bill user with fixed amount. Callback will be called after the user has paid the full amount.

.. code-block:: python

   def some_good_payment(good_id, user_id):
         pass

   app.create_payment(symbol='eth test', data={'good_id': 1, 'user_id': 2, 'target_amount': 0.1})

- Any other data you want. Just pass it to callback. For example:

.. code-block:: python

      def callback(arg1, arg2, something_else):
         pass

      data = {'arg1': 'some', 'arg2': 'think', 'something_else': 'you want'}
      app.create_payment(symbol='eth test', data=data)

Low level
=========

``get_currencies()``
``get_payment()``
``get_all_payments()``
``create_payment()``
``update_payment_data()``

.. autoclass:: cryptopay.cryptopay.Application
   :members:
   :show-inheritance:


.. autoclass:: cryptopay.classes.Payment
   :members:
   :show-inheritance:
