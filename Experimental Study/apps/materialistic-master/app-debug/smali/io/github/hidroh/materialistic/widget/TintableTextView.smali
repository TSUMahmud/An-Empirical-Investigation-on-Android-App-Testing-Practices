.class public Lio/github/hidroh/materialistic/widget/TintableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "TintableTextView.java"


# instance fields
.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/TintableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/TintableTextView;->getTextColor(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/TintableTextView;->mTextColor:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/R$styleable;->TintableTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "ta":Landroid/content/res/TypedArray;
    nop

    .line 45
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 47
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 44
    invoke-virtual {p0, v1, v3, v4, v2}, Lio/github/hidroh/materialistic/widget/TintableTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method private getTextColor(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010212

    invoke-static {v1, v2}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v1

    .line 66
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 68
    .local v0, "defaultTextColor":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 70
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 72
    .local v3, "ap":I
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_0

    .line 75
    :cond_0
    new-array v4, v4, [I

    const v5, 0x1010098

    aput v5, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 76
    .local v4, "tap":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 77
    .local v2, "textColor":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .end local v4    # "tap":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return v2

    :array_0
    .array-data 4
        0x1010034
        0x1010098
    .end array-data
.end method

.method private tint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 84
    if-nez p1, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 88
    iget v0, p0, Lio/github/hidroh/materialistic/widget/TintableTextView;->mTextColor:I

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 89
    return-object p1
.end method


# virtual methods
.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/TintableTextView;->tint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lio/github/hidroh/materialistic/widget/TintableTextView;->tint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p3}, Lio/github/hidroh/materialistic/widget/TintableTextView;->tint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p4}, Lio/github/hidroh/materialistic/widget/TintableTextView;->tint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method

.method public setTextColor(I)V
    .locals 5
    .param p1, "color"    # I

    .line 59
    iput p1, p0, Lio/github/hidroh/materialistic/widget/TintableTextView;->mTextColor:I

    .line 60
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lio/github/hidroh/materialistic/widget/TintableTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method
