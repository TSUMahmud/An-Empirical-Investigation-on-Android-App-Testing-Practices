.class public Lio/github/hidroh/materialistic/preference/FontPreference;
.super Lio/github/hidroh/materialistic/preference/SpinnerPreference;
.source "FontPreference.java"


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/preference/FontPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/preference/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/preference/FontPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method


# virtual methods
.method protected bindDropDownView(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 51
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {}, Lio/github/hidroh/materialistic/FontCache;->getInstance()Lio/github/hidroh/materialistic/FontCache;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lio/github/hidroh/materialistic/FontCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    iget-object v1, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method protected createDropDownView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 46
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/FontPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lio/github/hidroh/materialistic/FontCache;->getInstance()Lio/github/hidroh/materialistic/FontCache;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/github/hidroh/materialistic/FontCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/Application;->TYPE_FACE:Landroid/graphics/Typeface;

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
