---
title: checkbox 全选反选
date: 2017-03-16
tag: #javascript#
---

<div class="checkboxs">
 <input type="checkbox">全选</input>
    <div class= "increase-list">
        <input class="checkbox" type="checkbox">1</input>
        <input class="checkbox" type="checkbox">2</input>
        <input class="checkbox" type="checkbox">3</input>
    </div>
</div>

```javascript
window.onload =function() {
    var check_all = $('.checkboxs input').eq(0);
    check_all.click(function(event){
        var boxs = $('.increase-list');
        /*将所有行的选中状态设成全选框的选中状态*/
        boxs.find('.checkbox').prop('checked',$(this).prop('checked'));
        event.stopPropagation();
    });
}
```

<script>
window.onload =function() {
    var check_all = $('.checkboxs input').eq(0);
    check_all.click(function(event){
    var boxs = $('.increase-list');
    /*将所有行的选中状态设成全选框的选中状态*/
    boxs.find('.checkbox').prop('checked',$(this).prop('checked'));
    event.stopPropagation();
    });
}
</script>

<style>
    .checkboxs {
        width: 100%;
    }
     .increase-list{
        margin-left: 30px;
     }
    .increase-list, .checkboxs {
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>