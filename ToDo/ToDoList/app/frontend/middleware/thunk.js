
export const myThunk = (store) => (next) => (action) => {
    if (typeof action === "function") {
        debugger
        return action(store.dispatch, store.getState); 
    } else {
        debugger
        return next(action);
    }
}