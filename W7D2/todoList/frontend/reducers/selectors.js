

const allTodos = (state) => {
    let keys = Object.keys(state.todos);
    return keys.map(objId => state.todos[objId]);
};
export default allTodos;
