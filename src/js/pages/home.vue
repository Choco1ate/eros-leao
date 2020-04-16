<template>
    <!--<video src="https://mycdn.bj.bcebos.com/apps/PracticeForFun/video/a_v24.mp4" style="background: blue; width: auto; height: auto"></video>-->
<!--    <div class="container">-->
<!--        <div class="topView"></div>-->
<!--        <button @click="reverseMessage">2</button>-->
<!--    </div>-->
    <video ref = 'video' class = "video" src="https://mycdn.bj.bcebos.com/apps/PracticeForFun/video/ka_v31.mp4">

    </video>
</template>
<script>
    const modal = weex.requireModule('bmModal');
    const router = weex.requireModule('bmRouter')
    export default {

        created () {
            console.log('a is: ' + this.a);
            this.$navigator.setNavigationInfo({
                title: '五十音', // 中间区域标题
                navShow: true, // 是否显示导航栏
                statusBarStyle: 'LightContent' // 状态栏文字颜色：Defautl 黑色， LightContent 白色
            }, () => {
                // 点击回调
                console.log('您点击了导航条中间区域。')
            })

            this.$navigator.setRightItem({
                image: 'bmlocal://assets/main/nav_gift@2x.png' // 展示的图片url (和文字 二选一，文字优先级更高)
            }, () => {
                // 点击回调
                console.log('您点击了导航条右侧区域。');

                router.open({
                    url: '/pages/find.js', // 页面对应的 js 地址(注意路径从 /pages/ 开始)
                    type: 'PUSH', // 客户端定义动态类型，默认值为 PUSH 1. PUSH (将页面压栈到当前容器栈) 2.PRESENT （新建容器栈在进行压栈,从下面弹出新页面）3.TRANSLATION (动画类似QQ的侧滑抽屉效果)
                    params: {}, // 传到下一个页面的参数，params 通过 router.getParams(callback) 获取
                    canBack: true, // 是否需要返回按钮
                    gesBack: true, // 是否开启手势返回（默认开启，仅支持 iOS）
                    navTitle: '', // 页面标题
                    navShow: true, // 是否显示原生导航栏
                    statusBarStyle: 'Default||LightContent', // 系统状态栏文字颜色 1.Default：黑色， 2.LightContent: 白色
                    isRunBackCallback: true, // 为true时，用户点击返回（或Android物理返回按钮）时回调下面的callback方法，native端不做页面跳转
                    backgroundColor: '#f2f2f2' // 原生页面背景颜色（可以通过设置原生页面背景颜色从感官上减少白屏）
                }, function () {
                    // callback
                });
            })
        },

        methods: {
            reverseMessage () {
                modal.alert({
                    message: '我是一个弹窗', // 弹窗内容
                    okTitle: '确定', // 确定按钮文字
                    title: '标题' // title
                }, function () {
                    // 点击按钮的回调
                })
            }
        }
    };

</script>
<style scoped>
    .container {
        left: 0px;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        position: absolute;
        background-color: blue;
    }

    .title {
        font-size: 100px;
    }
    .desc {
        font-size: 30px;
    }
</style>

<style lang="scss">
    .topView {
        background-color: #ff7d44;
        left: 0;
        right: 0;
        height: 300px;
    }
</style>
