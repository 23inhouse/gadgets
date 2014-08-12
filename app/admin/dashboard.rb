ActiveAdmin.register_page 'Dashboard' do

  menu priority: 1, label: 'Carousel'

  content title: 'Carousel' do

    div do
      input type: 'button', id: 'slick-prev', value: 'Previous'
      input type: 'button', id: 'slick-next', value: 'Next'
    end
    div class: 'carousel' do
      GadgetImage.all.each do |gadget_image|
        if gadget_image.image.present?
          div do
            image_tag(gadget_image.image.normal.url)
          end
        end
      end
    end

    link rel: 'stylesheet', type: 'text/css', href: '//cdn.jsdelivr.net/jquery.slick/1.3.7/slick.css'
    script type: 'text/javascript',  src: '//cdn.jsdelivr.net/jquery.slick/1.3.7/slick.min.js'

    script type: 'text/javascript' do
      %(
        $(document).ready(function(){
          $('.carousel').slick({
            prevArrow: '#slick-prev',
            nextArrow: '#slick-next',
            infinite: false
          });
        });
      ).html_safe
    end
  end
end
