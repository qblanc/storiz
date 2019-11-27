import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
import { TextSave } from '../components/text_save';
import Rails from '@rails/ujs';
require("trix")
require("@rails/actiontext")
Rails.start();

initDisplayCharShowOnClick();
TextSave();

