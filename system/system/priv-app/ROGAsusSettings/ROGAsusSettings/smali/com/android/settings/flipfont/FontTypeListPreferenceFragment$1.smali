.class Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$1;
.super Ljava/lang/Object;
.source "FontTypeListPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$1;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 101
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$1;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-static {p1, p3}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$102(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;I)I

    .line 102
    iget-object p0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$1;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->onOkButtonPressed()Z

    return-void
.end method
