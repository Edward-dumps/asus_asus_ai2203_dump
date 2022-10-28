.class Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellBroadcastServiceConnection"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    return-void
.end method


# virtual methods
.method public getService()Landroid/os/IBinder;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 246
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const-string p0, "SimStatus"

    const-string p1, "Binding died"

    .line 247
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const-string p0, "SimStatus"

    const-string p1, "Null binding"

    .line 253
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SimStatus"

    const-string v0, "connected to CellBroadcastService"

    .line 233
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    .line 235
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$700(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const-string p0, "SimStatus"

    const-string p1, "mICellBroadcastService has disconnected unexpectedly"

    .line 241
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
