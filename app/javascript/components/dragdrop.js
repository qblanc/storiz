// Default SortableJS
import Sortable from 'sortablejs';

const el = document.querySelector('.index-list');
const sortable = Sortable.create(el);

el.addEventListener('mouseup', (e) => {

});

const renum = () =>

export { sortable };

// , {
//   group: "list-index",
//     store: {
// 		/**
// 		 * Get the order of elements. Called once during initialization.
// 		 * @param   {Sortable}  sortable
// 		 * @returns {Array}
// 		 */
//     get: function (sortable) {
//       const order = localStorage.getItem(sortable.options.group.name);
//       return order ? order.split('|') : [];
//     },

// 		/**
// 		 * Save the order of elements. Called onEnd (when the item is dropped).
// 		 * @param {Sortable}  sortable
// 		 */
//     set: function (sortable) {
//       const order = sortable.toArray();
//       localStorage.setItem(sortable.options.group.name, order.join('|'));
//     }
//   }
// }
