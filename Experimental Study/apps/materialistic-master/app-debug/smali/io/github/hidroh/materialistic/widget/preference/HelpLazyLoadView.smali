.class public Lio/github/hidroh/materialistic/widget/preference/HelpLazyLoadView;
.super Landroid/widget/ScrollView;
.source "HelpLazyLoadView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 36
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 37
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 38
    .local v0, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f100047

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 39
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f10002e

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->getDefaultStoryView(Landroid/content/Context;)Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    move-result-object v1

    .line 42
    .local v1, "defaultView":Lio/github/hidroh/materialistic/Preferences$StoryViewMode;
    sget-object v2, Lio/github/hidroh/materialistic/widget/preference/HelpLazyLoadView$1;->$SwitchMap$io$github$hidroh$materialistic$Preferences$StoryViewMode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "defaultTab":I
    goto :goto_0

    .line 49
    .end local v2    # "defaultTab":I
    :pswitch_0
    const/4 v2, 0x1

    .line 53
    .restart local v2    # "defaultTab":I
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 54
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
