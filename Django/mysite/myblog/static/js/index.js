var vm = new Vue({
  delimiters:['[[',']]'],
  el: '#app',
  data() {
    return {
      topmenu: [],
      banner: [],
      userUI: false,
      loginType: false,
      username: '',
      password: ''
    }
  },
  mounted() {
    this.getData()
  },
  methods: {
    getData() {
      var self = this
      reqwest({
        url: '/api/index',
        method: 'get',
        type: 'json',
        success: function (res) {
          self.topmenu = res.topmenu
          self.banner = res.banner
          self.initSwiper()
          if (res.loginType == 'ok') {
            self.loginType = true
          } else {
            self.loginType = false
          }
        }
      })
    },
    initSwiper() {
      new Swiper('.swiper-container', {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        observer: true, //修改swiper自己或子元素时，自动初始化swiper
        observeParents: true, //修改swiper的父元素时，自动初始化swiper
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
      });
    },
    showUserUI() {
      this.userUI = !this.userUI
    },
    userLogin() {
      var self = this
      reqwest({
        url: '/api/index',
        method: 'post',
        type: 'json',
        headers: {
          'X-CSRFToken': self.getCookie('csrftoken')
        },
        data: {
          username: self.username,
          password: self.password
        },
        success(res) {
          if (res.loginType == 'ok') {
            self.userUI = false;
            self.loginType = true;
          } else {
            alert('请填写正确的用户名和密码!')
          }
        },
        error(res) {
          console.log(res);
        }
      })
    },
    getCookie(name) {
      var value = '; ' + document.cookie
      var parts = value.split('; ' + name + '=')
      if (parts.length === 2) return parts.pop().split(';').shift()
    },
    toAdmin() {
      window.location.href = '/mycms'
    }
  },
})