.class public Lio/github/hidroh/materialistic/widget/StoryView;
.super Landroid/widget/RelativeLayout;
.source "StoryView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final PROMOTED:Ljava/lang/String; = "+%1$d"

.field private static final VOTE_DELAY_MILLIS:I = 0x1f4


# instance fields
.field private final mAccentColorResId:I

.field private final mBackground:Landroid/view/View;

.field private final mBackgroundColor:I

.field private final mBookmarked:Landroid/view/View;

.field private mChecked:Z

.field private final mCommentButton:Landroid/widget/TextView;

.field private final mCommentDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHighlightColor:I

.field private final mHotColorResId:I

.field private final mIsLocal:Z

.field private final mMoreButton:Landroid/view/View;

.field private final mPostedTextView:Landroid/widget/TextView;

.field private final mPromotedColorResId:I

.field private final mRankTextView:Landroid/widget/TextView;

.field final mScoreTextView:Landroid/widget/TextView;

.field private final mSecondaryTextColorResId:I

.field private final mSourceTextView:Landroid/widget/TextView;

.field private final mTertiaryTextColorResId:I

.field private final mTitleTextView:Landroid/widget/TextView;

.field final mVoteSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/widget/StoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/StoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    sget-object v0, Lio/github/hidroh/materialistic/R$styleable;->StoryView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mIsLocal:Z

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 92
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mTertiaryTextColorResId:I

    .line 93
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSecondaryTextColorResId:I

    .line 94
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mBackgroundColor:I

    .line 95
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mHighlightColor:I

    .line 96
    const v1, 0x7f06004b

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mPromotedColorResId:I

    .line 97
    const v1, 0x7f060082

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mHotColorResId:I

    .line 98
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04008a

    invoke-static {v3, v4}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v3

    .line 98
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mAccentColorResId:I

    .line 100
    const v1, 0x7f080074

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mAccentColorResId:I

    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 103
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mIsLocal:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0c005e

    goto :goto_0

    :cond_0
    const v1, 0x7f0c007e

    :goto_0
    invoke-static {p1, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    const v1, 0x7f090021

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mBackground:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mBackground:Landroid/view/View;

    iget v3, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mBackgroundColor:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    const v1, 0x7f090152

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mVoteSwitcher:Landroid/widget/ViewSwitcher;

    .line 107
    const v1, 0x7f0900e0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mRankTextView:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0900ea

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mScoreTextView:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f090024

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mBookmarked:Landroid/view/View;

    .line 110
    const v1, 0x7f0900da

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mPostedTextView:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f09013b

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mTitleTextView:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f090109

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSourceTextView:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 115
    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mMoreButton:Landroid/view/View;

    .line 118
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mMoreButton:Landroid/view/View;

    const v3, 0x7f040190

    invoke-static {p1, v3}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    return-void

    :array_0
    .array-data 4
        0x1010212
        0x1010038
        0x7f04008d
        0x7f04008e
    .end array-data
.end method

.method private decorateUpdated()Landroid/text/Spannable;
    .locals 5

    .line 282
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "*"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 283
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    new-instance v1, Lio/github/hidroh/materialistic/widget/AsteriskSpan;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/github/hidroh/materialistic/widget/AsteriskSpan;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 285
    return-object v0
.end method


# virtual methods
.method animateVote(I)V
    .locals 2
    .param p1, "newScore"    # I

    .line 252
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mIsLocal:Z

    if-eqz v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mVoteSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/widget/StoryView$1;

    invoke-direct {v1, p0, p1}, Lio/github/hidroh/materialistic/widget/StoryView$1;-><init>(Lio/github/hidroh/materialistic/widget/StoryView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 274
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mVoteSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 275
    return-void
.end method

.method public getMoreOptions()Landroid/view/View;
    .locals 1

    .line 278
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mMoreButton:Landroid/view/View;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mChecked:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .line 195
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mIsLocal:Z

    const/4 v1, 0x4

    const v2, 0x7f100097

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mRankTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mScoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mScoreTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 199
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mBookmarked:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mPostedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSourceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSourceTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .line 126
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mChecked:Z

    if-ne v0, p1, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mChecked:Z

    .line 130
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mBackground:Landroid/view/View;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mChecked:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mHighlightColor:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mBackgroundColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    return-void
.end method

.method public setFavorite(Z)V
    .locals 2
    .param p1, "isFavorite"    # Z

    .line 227
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mIsLocal:Z

    if-eqz v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mBookmarked:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public setOnCommentClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 234
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    return-void
.end method

.method public setPromoted(I)V
    .locals 6
    .param p1, "change"    # I

    .line 216
    new-instance v0, Landroid/text/SpannableString;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "+%1$d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 217
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v1}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 219
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 221
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mPromotedColorResId:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 223
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mRankTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public setStory(Lio/github/hidroh/materialistic/data/WebItem;I)V
    .locals 11
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "hotThreshold"    # I

    .line 144
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mIsLocal:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_7

    instance-of v0, p1, Lio/github/hidroh/materialistic/data/Item;

    if-eqz v0, :cond_7

    .line 145
    move-object v0, p1

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    .line 146
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getScore()I

    move-result v4

    mul-int/lit8 v5, p2, 0x3

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 147
    .local v4, "hot":Z
    :goto_0
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mScoreTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget v6, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mHotColorResId:I

    goto :goto_1

    :cond_1
    iget v6, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSecondaryTextColorResId:I

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mRankTextView:Landroid/widget/TextView;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getRank()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mScoreTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    const v6, 0x7f0800a0

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v3, v3, v3, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 151
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mScoreTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0002

    .line 152
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getScore()I

    move-result v8

    new-array v9, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getScore()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 154
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v5

    if-lt v5, p2, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    move v4, v5

    .line 155
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget v6, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mHotColorResId:I

    goto :goto_4

    :cond_4
    iget v6, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mAccentColorResId:I

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    if-eqz v4, :cond_5

    .line 157
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    const v6, 0x7f0800a1

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_5

    .line 160
    :cond_5
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    iget-object v6, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    :goto_5
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 165
    :cond_6
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    iget v6, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mAccentColorResId:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    iget-object v6, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    .end local v0    # "item":Lio/github/hidroh/materialistic/data/Item;
    .end local v4    # "hot":Z
    :cond_7
    :goto_6
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f100097

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mTitleTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mPostedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {p1, v4}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTime(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mPostedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {p1, v4, v3, v3}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedAuthor(Landroid/content/Context;ZI)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 176
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x19bbd

    if-eq v5, v6, :cond_a

    const v6, 0x3497bf

    if-eq v5, v6, :cond_9

    :cond_8
    goto :goto_7

    :cond_9
    const-string v5, "poll"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_a
    const-string v1, "job"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :goto_7
    const/4 v1, -0x1

    :goto_8
    packed-switch v1, :pswitch_data_0

    .line 188
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSourceTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSourceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 183
    :pswitch_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSourceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSourceTextView:Landroid/widget/TextView;

    const v1, 0x7f08008f

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 186
    goto :goto_9

    .line 178
    :pswitch_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSourceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSourceTextView:Landroid/widget/TextView;

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 181
    nop

    .line 192
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setUpdated(Lio/github/hidroh/materialistic/data/Item;ZI)V
    .locals 2
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "updated"    # Z
    .param p3, "change"    # I

    .line 238
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mIsLocal:Z

    if-eqz v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    if-eqz p2, :cond_1

    .line 242
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mRankTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/StoryView;->decorateUpdated()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 243
    :cond_1
    if-lez p3, :cond_2

    .line 244
    invoke-virtual {p0, p3}, Lio/github/hidroh/materialistic/widget/StoryView;->setPromoted(I)V

    .line 246
    :cond_2
    :goto_0
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->hasNewKids()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mCommentButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/StoryView;->decorateUpdated()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 249
    :cond_3
    return-void
.end method

.method public setViewed(Z)V
    .locals 2
    .param p1, "isViewed"    # Z

    .line 209
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mIsLocal:Z

    if-eqz v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mSecondaryTextColorResId:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mTertiaryTextColorResId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/StoryView;->setChecked(Z)V

    .line 141
    return-void
.end method
