<template>
    <chatView ref = 'chatView' class = "chatView" myAttribute="1233455" @mapLoaded="onMapLoaded">
        <button  style="height: 100px; width: 100px" @click="click">123131312313</button>
    </chatView>
</template>
<script>
    const modal = weex.requireModule('bmModal');
    export default {
        methods: {
            click () {
                // modal.alert({
                //     message: '我是一个弹窗', // 弹窗内容
                //     okTitle: '确定', // 确定按钮文字
                //     title: '标题' // title
                // }, function () {
                //     // 点击按钮的回调
                // })
                this.$refs['chatView'].loginIM()
            },

            onMapLoaded:function(e) {
                console.log("map loaded"+JSON.stringify(e))

                modal.alert({
                    message: JSON.stringify(e), // 弹窗内容
                    okTitle: '确定', // 确定按钮文字
                    title: '标题' // title
                }, function () {
                    // 点击按钮的回调
                })
            },
            finish (params) {
                console.log(params);
            }
        }
    }
</script>
<style lang="scss">
    .chatView {
        background-color: red;
        margin: 0;
        padding: 0;
    }
</style>
