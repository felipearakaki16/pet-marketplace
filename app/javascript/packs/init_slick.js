const $ = require( "jquery" )
require("slick-carousel")

import "slick-carousel/slick/slick.scss"
import "slick-carousel/slick/slick-theme.scss"



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
//const images = require.context('../images', true)
//const imagePath = (name) => images(name, true)

const init_slick = () => {
  $('.slick-modal').slick({
    dots: true,
    infinite: true,
    autoplaySpeed: 2000,
    slidesToShow: 1,
    adaptiveHeight: true
  });

  $('.autoplay').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
  });
}

export { init_slick };
