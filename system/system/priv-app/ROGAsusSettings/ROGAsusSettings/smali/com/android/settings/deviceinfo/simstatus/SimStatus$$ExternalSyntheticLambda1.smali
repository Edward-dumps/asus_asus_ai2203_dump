.class public final synthetic Lcom/android/settings/deviceinfo/simstatus/SimStatus$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->$r8$lambda$vXNhomJgWL9IgsmqDv1J753SNO0(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
