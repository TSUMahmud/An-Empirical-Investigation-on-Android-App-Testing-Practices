package fr.nocle.passegares.interfaces;

public interface OnNavigateIntentManager {
    boolean onMoveActivity(java.lang.Class activityClass);
    boolean onMoveActivity(java.lang.Class activityClass, String name, boolean value);
    boolean onMoveActivity(java.lang.Class activityClass, String name, int value);
    boolean onMoveActivity(java.lang.Class activityClass, String name1, int value1, String name2, boolean value2);
    boolean getBooleanExtra(String name, boolean defaultValue);
}
