.class Lio/github/hidroh/materialistic/preference/SpinnerPreference$1;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/preference/SpinnerPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/preference/SpinnerPreference;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/preference/SpinnerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/preference/SpinnerPreference;

    .line 91
    iput-object p1, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference$1;->this$0:Lio/github/hidroh/materialistic/preference/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference$1;->this$0:Lio/github/hidroh/materialistic/preference/SpinnerPreference;

    iget-object v0, v0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 94
    if-nez p2, :cond_0

    .line 95
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference$1;->this$0:Lio/github/hidroh/materialistic/preference/SpinnerPreference;

    invoke-virtual {v0, p1, p3}, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->createDropDownView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference$1;->this$0:Lio/github/hidroh/materialistic/preference/SpinnerPreference;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->bindDropDownView(ILandroid/view/View;)V

    .line 98
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/preference/SpinnerPreference$1;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 104
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 109
    return-void
.end method
