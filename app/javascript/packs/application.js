import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
// import { drag } from '../pages/mood';
import { setRandomSize } from '../pages/mood';
import { setRandomPosition } from '../pages/mood';
import { randomIntFromInterval } from '../pages/mood';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import Rails from '@rails/ujs';

Rails.start();

initDisplayCharShowOnClick();
drag();
setRandomSize();
setRandomPosition();
randomIntFromInterval();

require("trix")
require("@rails/actiontext")
