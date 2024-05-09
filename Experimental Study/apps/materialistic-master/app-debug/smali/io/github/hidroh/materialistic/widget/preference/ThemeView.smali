.class public Lio/github/hidroh/materialistic/widget/preference/ThemeView;
.super Landroidx/cardview/widget/CardView;
.source "ThemeView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/preference/ThemeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0c0080

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    new-array v0, v1, [I

    const/4 v1, 0x0

    const/high16 v2, 0x1010000

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "ta":Landroid/content/res/TypedArray;
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f110020

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 42
    .local v1, "wrapper":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    const v2, 0x7f04008d

    invoke-static {v1, v2}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v2

    .line 44
    .local v2, "cardBackgroundColor":I
    const v3, 0x1010212

    invoke-static {v1, v3}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v3

    .line 45
    .local v3, "textColor":I
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 46
    const v4, 0x7f090044

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    return-void
.end method
