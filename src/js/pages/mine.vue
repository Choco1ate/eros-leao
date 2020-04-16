<template>
    <div style="position: absolute; top: 0; left: 0; right: 0; bottom:0;">
        <text style="top: 10px; height: 100px" @click="prev">上一页</text>
        <ydCalendar class="calendar" selectType='range' ref='calendar' @finish='finish' style="height: 800px" maximumDate="2019-10-07" minimumDate="2016-10-07" :selectDates="selectDates"></ydCalendar>
        <text style="height: 50px" @click="next">下一页</text>
        <text style="top: 600px; height: 100px" @click="done">确定</text>
    </div>
</template>
<script>

</script>
<style scoped>
    .container {
        display: flex;
        flex:1;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    .title {
        font-size: 100px;
    }
    .desc {
        font-size: 30px;
    }
</style>
