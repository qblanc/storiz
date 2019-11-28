// Default SortableJS
import Sortable from 'sortablejs/modular/sortable.core.esm.js';

const initSortable = () => {
  const el = document.querySelector('.index-list');
  Sortable.create(el);
  }

export { initSortable };

// el.addEventListener('mouseup', (e) =>)

// const renum = () =>


// // , {
// //   group: "list-index",
// //     store: {
// // 		/**
// // 		 * Get the order of elements. Called once during initialization.
// // 		 * @param   {Sortable}  sortable
// // 		 * @returns {Array}
// // 		 */
// //     get: function (sortable) {
// //       const order = localStorage.getItem(sortable.options.group.name);
// //       return order ? order.split('|') : [];
// //     },

// // 		/**
// // 		 * Save the order of elements. Called onEnd (when the item is dropped).
// // 		 * @param {Sortable}  sortable
// // 		 */
// //     set: function (sortable) {
// //       const order = sortable.toArray();
// //       localStorage.setItem(sortable.options.group.name, order.join('|'));
// //     }
// //   }
// // }
