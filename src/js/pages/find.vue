<template>
    <!--<video src="https://mycdn.bj.bcebos.com/apps/PracticeForFun/video/a_v24.mp4" style="background: blue; width: auto; height: auto"></video>-->
    <list>
        <cell class = 'list-cell' v-for="(item , index) in listArr">
            <div class="cell-left">
                <text class = "cell-left-text-title">{{item.title}}</text>
                <text class = "cell-left-text-detail">{{item.article_type}}</text>
            </div>
            <div class="cell-right">
                <image class = "cell-right-image" :src = "item.list_image"></image>
            </div>
        </cell>
    </list>
</template>
<script>
    const modal = weex.requireModule('bmModal');
    const router = weex.requireModule('bmRouter');
    export default {

        data () {
            return {
                listArr: [],
                lists: ['A', 'B', 'C', 'D', 'E']
            }
        },

        created () {
            this.$fetch({
                method: 'GET',
                url: 'https://www.izaodao.com/Api/AppFiftyToneGraph/dailyArticle?page=1&openId=864432322756214786'
            }).then((response) => {
                console.log('🙂111');
                // const json = JSON.stringify(response, ['ret', 'msg', 'data']);
                const json = JSON.stringify(response.data.article);
                console.log(json);

                var list = JSON.parse(JSON.stringify(response.data.article));

                console.log(list[0]['id']);

                this.listArr = list;
                console.log(this.listArr);
            }).catch(function (e) {
                console.log(e);
            });
        },

        methods: {

        }
    };

</script>
<style lang="less">
    .container {
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: blue;
    }

    .title {
        font-size: 100px;
    }

    .desc {
        font-size: 30px;
    }

    .list-cell {
        display: flex;
        height: 200px;
        border-bottom: 1px solid lightgrey;
        flex-direction: row;
        align-items: center;
        position: relative;
    }

    .cell-left {
        /*float: left;*/
        left: 10px;
        right: 135px;
        position: absolute;
    }

    .cell-left-text-title {
        height: 100px;
        top: 50%;
    }

    .cell-left-text-detail{
        height: 100px;

        top: 10%;
    }

    .cell-right {
        /*float: right;*/
        width: auto;
        height: auto;
        position: absolute;
        right: 15px;
    }

    .cell-right-image {
        width: 110px;
        height: 110px;
    }
</style>
