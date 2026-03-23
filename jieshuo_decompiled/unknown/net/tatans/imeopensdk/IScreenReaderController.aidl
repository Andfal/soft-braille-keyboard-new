// IScreenReaderController.aidl
package net.tatans.imeopensdk;

// Declare any non-default types here with import statements

interface IScreenReaderController {

    /**
    * 请求开启或者关闭触摸浏览
    */
    void requestTouchExplorationState(in IBinder callingInstance,boolean enable);

    /**
    * 输入法的交互模式切换，fullScreenMode为true表示全屏手势检测模式，需要暂停触摸浏览，否则为普通模式，需要开启触摸浏览。
    */
    void onInputModeChanged(in IBinder callingInstance,boolean fullScreenMode);

    /**
    * 设置暂停触摸浏览区域，该方法仅在安卓11及以上系统有效。
    */
    void setTouchExplorePassThrough(in IBinder callingInstance,int left,int top,int right,int bottom);

    /**
    * 调用读屏语音播报
    * @params text 播报的文本内容
    * @params queueMode 播报队列方式，0:打断，1:队列播放，2:不可打断
    * @params flags 播报属性设置，例如强制反馈等等，具体查看FeedbackItem
    */
    void speak(in IBinder callingInstance,String text,int queueMode,int flags);

    /**
    * 打断读屏播报
    */
    void interrupt(in IBinder callingInstance);

    /**
    * 根据文本内容数组尝试查找屏幕上与之匹配的节点之一，并执行点击操作
    */
    boolean performClick(in IBinder callingInstance,in List<String> nodeTexts);

}