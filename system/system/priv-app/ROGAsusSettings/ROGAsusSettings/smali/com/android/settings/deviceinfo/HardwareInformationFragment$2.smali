.class Lcom/android/settings/deviceinfo/HardwareInformationFragment$2;
.super Ljava/lang/Object;
.source "HardwareInformationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/HardwareInformationFragment;->dockingRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/HardwareInformationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/HardwareInformationFragment;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment$2;->this$0:Lcom/android/settings/deviceinfo/HardwareInformationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 248
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment$2;->this$0:Lcom/android/settings/deviceinfo/HardwareInformationFragment;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->access$000(Lcom/android/settings/deviceinfo/HardwareInformationFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HardwareInformationFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
