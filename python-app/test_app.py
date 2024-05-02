import unittest
from flask import Flask
from app import app  # Importa la instancia de la aplicación Flask desde tu módulo

class TestAppRoutes(unittest.TestCase):  # Define una clase de pruebas que hereda de unittest.TestCase
    def setUp(self):
        self.app = app.test_client()  # Crea un cliente de prueba para la aplicación Flask
        self.app.testing = True  # Habilita el modo de pruebas en el cliente

    def test_home_route(self):
        response = self.app.get('/')  # Realiza una solicitud GET a la ruta '/'
        self.assertEqual(response.status_code, 200)  # Verifica que el código de estado sea 200 (OK)
        self.assertIn(b'HTML', response.data)  # Verifica que el contenido esperado esté en la respuesta

    def test_ping_route(self):
        response = self.app.get('/ping')  # Realiza una solicitud GET a la ruta '/ping'
        self.assertEqual(response.status_code, 200)  # Verifica que el código de estado sea 200 (OK)
        self.assertEqual(response.data, b'pong')  # Verifica que el contenido de la respuesta sea 'pong'

if __name__ == '__main__':
    unittest.main()  # Ejecuta las pruebas si este archivo se ejecuta directamente