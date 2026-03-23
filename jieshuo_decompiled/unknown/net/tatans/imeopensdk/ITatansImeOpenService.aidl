// ITatansImeOpenService.aidl
package net.tatans.imeopensdk;

import net.tatans.imeopensdk.IScreenReaderController;

// Declare any non-default types here with import statements

interface ITatansImeOpenService {

    /**
    * 选择上一个或者下一个候选词
    * @param forward true为选择下一个候选词，false为选择上一个候选词
    * return true代表执行成功，false则代表失败
    */
    boolean selectPreviousOrNextCandidatas(in IBinder callingInstance,boolean forward);

    void setScreenReaderController(in IBinder callingInstance,IScreenReaderController controller);

    /**
    * 向编辑框提交文本
    */
     boolean commitText(in IBinder callingInstance,String text);

     /**
     *删除编辑框文本
     */
     boolean delete(in IBinder callingInstance);

     boolean deleteAll(in IBinder callingInstance);

     /**
     * 获取剪切板数据
     */
     String getClipData(in IBinder callingInstance);

      /**
      * 输入法是否显示
      */
     boolean isInputViewShown(in IBinder callingInstance);
}