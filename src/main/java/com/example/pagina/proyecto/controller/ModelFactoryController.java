package com.example.pagina.proyecto.controller;

import com.example.pagina.proyecto.service.ModelFactoryControllerService;
import com.example.pagina.proyecto.service.impl.StoreServiceImpl;

public class ModelFactoryController implements ModelFactoryControllerService {
    StoreServiceImpl store;
    public StoreServiceImpl getStore() {
        return store;
    }
        private static class SingletonHolder {
            // El constructor de Singleton puede ser llamado desde aquí al ser protected
            private final static ModelFactoryController eINSTANCE = new ModelFactoryController();
        }

        // Método para obtener la instancia de nuestra clase
        public static ModelFactoryController getInstance() {
            return SingletonHolder.eINSTANCE;
        }

        public ModelFactoryController() {
            System.out.println("invocación clase singleton");
            store = new StoreServiceImpl();

        }
}
