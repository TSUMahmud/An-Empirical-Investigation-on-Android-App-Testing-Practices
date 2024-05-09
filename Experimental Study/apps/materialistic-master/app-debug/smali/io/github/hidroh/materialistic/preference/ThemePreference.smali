.class public Lio/github/hidroh/materialistic/preference/ThemePreference;
.super Landroidx/preference/Preference;
.source "ThemePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;,
        Lio/github/hidroh/materialistic/preference/ThemePreference$DarkSpec;,
        Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;
    }
.end annotation


# static fields
.field private static final BLACK:Ljava/lang/String; = "black"

.field private static final BUTTONS:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DARK:Ljava/lang/String; = "dark"

.field private static final GREEN:Ljava/lang/String; = "green"

.field private static final LIGHT:Ljava/lang/String; = "light"

.field private static final SEPIA:Ljava/lang/String; = "sepia"

.field private static final SOLARIZED:Ljava/lang/String; = "solarized"

.field private static final SOLARIZED_DARK:Ljava/lang/String; = "solarized_dark"

.field private static final VALUES:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSelectedTheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    .line 44
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    .line 46
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    const v1, 0x7f090136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "light"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    const v1, 0x7f090134

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dark"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    const v1, 0x7f090133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "black"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    const v1, 0x7f090137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sepia"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    const v1, 0x7f090135

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "green"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    const v1, 0x7f090138

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "solarized"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    const v1, 0x7f090139

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "solarized_dark"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    const-string v1, "light"

    new-instance v2, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;

    const v3, 0x7f10016d

    invoke-direct {v2, v3}, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    const-string v1, "dark"

    new-instance v2, Lio/github/hidroh/materialistic/preference/ThemePreference$DarkSpec;

    const v3, 0x7f10016b

    invoke-direct {v2, v3}, Lio/github/hidroh/materialistic/preference/ThemePreference$DarkSpec;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    const-string v1, "black"

    new-instance v2, Lio/github/hidroh/materialistic/preference/ThemePreference$DarkSpec;

    const v3, 0x7f10016a

    const v4, 0x7f1100e9

    invoke-direct {v2, v3, v4}, Lio/github/hidroh/materialistic/preference/ThemePreference$DarkSpec;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    const-string v1, "sepia"

    new-instance v2, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;

    const v3, 0x7f10016e

    const v4, 0x7f110132

    invoke-direct {v2, v3, v4}, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    const-string v1, "green"

    new-instance v2, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;

    const v3, 0x7f10016c

    const v4, 0x7f1100ef

    invoke-direct {v2, v3, v4}, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    const-string v1, "solarized"

    new-instance v2, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;

    const v3, 0x7f10016f

    const v4, 0x7f110133

    invoke-direct {v2, v3, v4}, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    const-string v1, "solarized_dark"

    new-instance v2, Lio/github/hidroh/materialistic/preference/ThemePreference$DarkSpec;

    const v3, 0x7f100170

    const v4, 0x7f110134

    invoke-direct {v2, v3, v4}, Lio/github/hidroh/materialistic/preference/ThemePreference$DarkSpec;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/preference/ThemePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 79
    return-void
.end method

.method public static getTheme(Ljava/lang/String;Z)Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "isTranslucent"    # Z

    .line 67
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const-string v1, "light"

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    .line 68
    .local v0, "themeSpec":Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->getTranslucent()Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lio/github/hidroh/materialistic/preference/ThemePreference;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 106
    iput-object p1, p0, Lio/github/hidroh/materialistic/preference/ThemePreference;->mSelectedTheme:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/preference/ThemePreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences$Theme;->disableAutoDayNight(Landroid/content/Context;)V

    .line 110
    :cond_0
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    iget v0, v0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->summary:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 111
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 112
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 98
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 99
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 101
    sget-object v1, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    .local v1, "buttonId":I
    sget-object v2, Lio/github/hidroh/materialistic/preference/ThemePreference;->BUTTONS:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, "button":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 105
    new-instance v4, Lio/github/hidroh/materialistic/preference/-$$Lambda$ThemePreference$wa8hFYjiW969ke2TtT54DQ9Ze4g;

    invoke-direct {v4, p0, v2}, Lio/github/hidroh/materialistic/preference/-$$Lambda$ThemePreference$wa8hFYjiW969ke2TtT54DQ9Ze4g;-><init>(Lio/github/hidroh/materialistic/preference/ThemePreference;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .end local v1    # "buttonId":I
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "button":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 83
    const-string v0, "light"

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 88
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 89
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lio/github/hidroh/materialistic/preference/ThemePreference;->mSelectedTheme:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/ThemePreference;->mSelectedTheme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "light"

    iput-object v0, p0, Lio/github/hidroh/materialistic/preference/ThemePreference;->mSelectedTheme:Ljava/lang/String;

    .line 93
    :cond_1
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Lio/github/hidroh/materialistic/preference/ThemePreference;->mSelectedTheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    iget v0, v0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->summary:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 94
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .line 119
    sget-object v0, Lio/github/hidroh/materialistic/preference/ThemePreference;->VALUES:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Lio/github/hidroh/materialistic/preference/ThemePreference;->mSelectedTheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
