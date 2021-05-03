import { createStore, applyMiddleware } from 'redux';
import rootReducer from '../reducers/root_reducer';
// import { applyMiddleware} from 'redux';
import { myThunk } from '../middleware/thunk.js'; 
// import logger from 'redux-logger'; 

const configureStore = (preloadedState = {}) => {
  const store = createStore(rootReducer, preloadedState, applyMiddleware(myThunk));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

export default configureStore;
