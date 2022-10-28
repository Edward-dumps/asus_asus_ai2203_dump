.class Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "FacelockSettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method
