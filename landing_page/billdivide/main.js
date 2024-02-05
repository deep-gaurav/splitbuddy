import './style.scss'


// gsap.registerPlugin(ScrollTrigger, ScrollToPlugin);


let panels = document.querySelector('.panels');
// let sections = gsap.utils.toArray(".panel");
// let activeSlide = document.querySelector('.activeSlide');
// let totalSlides = sections.length;
// let slideTotal = document.querySelector('.slideTotal');
// slideTotal.innerHTML = totalSlides;

// sections.forEach((eachPanel, index) => {

//   let realIndex = (index + 1);

//   ScrollTrigger.create({
//     scroller: ".panels",
//     trigger: eachPanel,
//     start: "top 50%", // count changes @ 20%
//     end: "top bottom",
//     //	markers:true
//     //  no ST pinning / scrubbing - major problems in iOS
//     //	so we that in native CSS (scroll-snap / sticky)	
//     onLeave: function () {
//       eachPanel.classList.add('active');
//       activeSlide.innerHTML = realIndex;
//       //	console.log('active: i = ' + realIndex);
//       let indexNext = (realIndex + 1);
//       let indexPrev = (realIndex - 1);
//       dnBtn.setAttribute('data-down', indexNext);
//       upBtn.setAttribute('data-up', indexPrev);
//       updateUI(indexPrev, indexNext);
//     },
//     onLeaveBack: function () {
//       eachPanel.classList.remove('active');
//       let realIndexBack = (realIndex - 1);
//       activeSlide.innerHTML = realIndexBack;
//       //  console.log('active: i = ' + realIndexBack);
//       let indexNext = (realIndex);
//       let indexPrev = (realIndex - 2);
//       dnBtn.setAttribute('data-down', indexNext);
//       upBtn.setAttribute('data-up', indexPrev);
//       updateUI(indexPrev, indexNext);
//     },

//   });

// });

// function updateUI(keyIndexUp, keyIndexDown) {

//   if (keyIndexDown > 2) {
//     upBtn.classList.remove('disabled');
//   } else {
//     upBtn.classList.add('disabled');
//   }

//   if (keyIndexDown > totalSlides) { // (6)
//     dnBtn.classList.toggle('disabled');
//   } else {
//     dnBtn.classList.remove('disabled');
//   }

// }

// let upBtn = document.querySelector(".up");
// let dnBtn = document.querySelector(".down");
// dnBtn.addEventListener("click", panelDown);
// upBtn.addEventListener("click", panelUp);

// function panelDown() {
//   let nextPanel = this.getAttribute('data-down');
//   if (nextPanel <= totalSlides) { // less/equal to 5
//     goToPanel(nextPanel);
//   }
// } // panelDown

// function panelUp() {
//   let prevPanel = this.getAttribute('data-up');
//   if (prevPanel >= 1) { // more/equal to 1
//     goToPanel(prevPanel);
//   }
// } // panelDown

// function goToPanel(thePanel) {
//   gsap.to(panels, {
//     ease: "power4.inOut",
//     duration: 0.55,
//     scrollTo: {
//       y: "#panel_" + thePanel,
//       autoKill: false
//     }
//   });
// };


const imageAspectRatio = 1326 / 924
const scPanels = document.querySelector('.screenshotPanels')

panels.addEventListener(
  'scroll', (e) => {
    console.log(`pan: ${panels.scrollTop}, scp: ${scPanels.scrollTop}`)
    scPanels.scrollTop = (scPanels.clientHeight) * (panels.scrollTop / panels.clientHeight)
  }
)

document.querySelectorAll('.down_icon').forEach(
  (e) => e.addEventListener('click', (e) => {
    panels.scrollBy({
      top: panels.clientHeight,
      behavior: 'smooth'
    })
  })
)

// function resizeContainer() {
//   const sccontainer = document.querySelector('.screenshotContainer')
//   const height = sccontainer.clientHeight;
//   const width = (358 / 735) * height
//   sccontainer.style.width = `${width}px`

// }

// resizeContainer()
// window.addEventListener('resize', resizeContainer)