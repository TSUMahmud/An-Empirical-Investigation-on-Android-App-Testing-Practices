.class public Lio/github/hidroh/materialistic/preference/FontSizePreference;
.super Lio/github/hidroh/materialistic/preference/SpinnerPreference;
.source "FontSizePreference.java"


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/preference/FontSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object v0, p0, Lio/github/hidroh/materialistic/preference/FontSizePreference;->mLayoutInflater:Landroid/view/LayoutInflater;

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
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 53
    invoke-static {v2}, Lio/github/hidroh/materialistic/Preferences$Theme;->resolveTextSize(Ljava/lang/String;)I

    move-result v2

    .line 52
    const v3, 0x7f0400a5

    invoke-static {v1, v2, v3}, Lio/github/hidroh/materialistic/AppUtils;->getDimension(Landroid/content/Context;II)F

    move-result v1

    .line 55
    .local v1, "textSize":F
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    iget-object v2, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntries:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method protected createDropDownView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 46
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/FontSizePreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
