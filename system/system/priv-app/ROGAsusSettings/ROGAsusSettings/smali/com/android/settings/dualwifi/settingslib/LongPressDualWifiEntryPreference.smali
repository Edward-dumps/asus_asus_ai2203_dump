.class public Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;
.super Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;
.source "LongPressDualWifiEntryPreference.java"


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    .line 19
    iput-object p3, p0, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 25
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 27
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    return-void
.end method
