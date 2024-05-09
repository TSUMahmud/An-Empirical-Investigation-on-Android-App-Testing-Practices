.class Lio/github/hidroh/materialistic/preference/SpinnerPreference$2;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 152
    iput-object p1, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference$2;->this$0:Lio/github/hidroh/materialistic/preference/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 155
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference$2;->this$0:Lio/github/hidroh/materialistic/preference/SpinnerPreference;

    iput p3, v0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mSelection:I

    .line 156
    iget-object v1, v0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->access$000(Lio/github/hidroh/materialistic/preference/SpinnerPreference;Ljava/lang/String;)Z

    .line 157
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 162
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
