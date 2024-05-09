.class public Lio/github/hidroh/materialistic/KeyDelegate;
.super Ljava/lang/Object;
.source "KeyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;,
        Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;,
        Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;,
        Lio/github/hidroh/materialistic/KeyDelegate$Direction;
    }
.end annotation


# static fields
.field private static final DIRECTION_DOWN:I = 0x2

.field private static final DIRECTION_NONE:I = 0x0

.field private static final DIRECTION_UP:I = 0x1


# instance fields
.field private mAppBarEnabled:Z

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mBackInterceptor:Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;

.field private mEnabled:Z

.field private mPreferenceKey:Ljava/lang/String;

.field private final mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mScrollable:Lio/github/hidroh/materialistic/Scrollable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarEnabled:Z

    .line 59
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$KeyDelegate$r0emf_IO_SEWJeBijq9NsFct89I;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/-$$Lambda$KeyDelegate$r0emf_IO_SEWJeBijq9NsFct89I;-><init>(Lio/github/hidroh/materialistic/KeyDelegate;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 64
    return-void
.end method

.method public static synthetic lambda$new$0(Lio/github/hidroh/materialistic/KeyDelegate;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mPreferenceKey:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mEnabled:Z

    .line 63
    :cond_0
    return-void
.end method

.method private longPress(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 207
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 211
    goto :goto_0

    .line 213
    :cond_0
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 216
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mScrollable:Lio/github/hidroh/materialistic/Scrollable;

    if-eqz v0, :cond_2

    .line 217
    invoke-interface {v0}, Lio/github/hidroh/materialistic/Scrollable;->scrollToTop()V

    .line 221
    :cond_2
    :goto_0
    return-void
.end method

.method private shortPress(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 183
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mScrollable:Lio/github/hidroh/materialistic/Scrollable;

    if-nez v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 193
    :pswitch_0
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 195
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mScrollable:Lio/github/hidroh/materialistic/Scrollable;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/Scrollable;->scrollToNext()Z

    .line 199
    goto :goto_0

    .line 188
    :pswitch_1
    invoke-interface {v0}, Lio/github/hidroh/materialistic/Scrollable;->scrollToPrevious()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 204
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 73
    const v0, 0x7f100128

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mPreferenceKey:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mPreferenceKey:Ljava/lang/String;

    .line 75
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mEnabled:Z

    .line 76
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 77
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 78
    return-void
.end method

.method public detach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 87
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 88
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mScrollable:Lio/github/hidroh/materialistic/Scrollable;

    .line 90
    iput-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 91
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 126
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 127
    iget-object v2, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mBackInterceptor:Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 129
    :cond_1
    iget-boolean v2, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mEnabled:Z

    if-nez v2, :cond_2

    .line 130
    return v1

    .line 132
    :cond_2
    const/16 v2, 0x18

    if-eq p1, v2, :cond_4

    const/16 v2, 0x19

    if-ne p1, v2, :cond_3

    goto :goto_1

    .line 137
    :cond_3
    return v1

    .line 134
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 135
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 169
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 170
    return v1

    .line 172
    :cond_0
    const/16 v0, 0x18

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 173
    invoke-direct {p0, v2}, Lio/github/hidroh/materialistic/KeyDelegate;->longPress(I)V

    .line 174
    return v2

    .line 175
    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    .line 176
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/KeyDelegate;->longPress(I)V

    .line 177
    return v2

    .line 179
    :cond_2
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 147
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 150
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 151
    .local v0, "notLongPress":Z
    :goto_0
    const/16 v3, 0x18

    if-ne p1, v3, :cond_2

    if-eqz v0, :cond_2

    .line 152
    invoke-direct {p0, v2}, Lio/github/hidroh/materialistic/KeyDelegate;->shortPress(I)V

    .line 153
    return v2

    .line 154
    :cond_2
    const/16 v3, 0x19

    if-ne p1, v3, :cond_3

    if-eqz v0, :cond_3

    .line 155
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/KeyDelegate;->shortPress(I)V

    .line 156
    return v2

    .line 158
    :cond_3
    return v1
.end method

.method setAppBarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 108
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarEnabled:Z

    .line 109
    return-void
.end method

.method setBackInterceptor(Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;)V
    .locals 0
    .param p1, "backInterceptor"    # Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;

    .line 116
    iput-object p1, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mBackInterceptor:Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;

    .line 117
    return-void
.end method

.method public setScrollable(Lio/github/hidroh/materialistic/Scrollable;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0
    .param p1, "scrollable"    # Lio/github/hidroh/materialistic/Scrollable;
    .param p2, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 99
    iput-object p1, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mScrollable:Lio/github/hidroh/materialistic/Scrollable;

    .line 100
    iput-object p2, p0, Lio/github/hidroh/materialistic/KeyDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 101
    return-void
.end method
