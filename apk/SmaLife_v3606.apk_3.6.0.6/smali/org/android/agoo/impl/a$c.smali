.class Lorg/android/agoo/impl/a$c;
.super Ljava/lang/Object;
.source "ElectionService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Lorg/android/agoo/service/ElectionReceiverService;

.field private c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p1, p0, Lorg/android/agoo/impl/a$c;->a:Landroid/content/Intent;

    .line 839
    iput-object p0, p0, Lorg/android/agoo/impl/a$c;->c:Landroid/content/ServiceConnection;

    .line 840
    return-void
.end method

.method static synthetic a(Lorg/android/agoo/impl/a$c;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lorg/android/agoo/impl/a$c;->a:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(Lorg/android/agoo/impl/a$c;)Lorg/android/agoo/service/ElectionReceiverService;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lorg/android/agoo/impl/a$c;->b:Lorg/android/agoo/service/ElectionReceiverService;

    return-object v0
.end method

.method static synthetic c(Lorg/android/agoo/impl/a$c;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lorg/android/agoo/impl/a$c;->c:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 849
    const-string v0, "ElectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ElectionConnection conneted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-static {p2}, Lorg/android/agoo/service/ElectionReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/android/agoo/service/ElectionReceiverService;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/impl/a$c;->b:Lorg/android/agoo/service/ElectionReceiverService;

    .line 851
    const-string v0, "ElectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected current tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v0, "ElectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ElectionConnection sent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/impl/a$c;->a:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lorg/android/agoo/impl/a$c;->b:Lorg/android/agoo/service/ElectionReceiverService;

    if-eqz v0, :cond_0

    .line 854
    invoke-static {}, Lorg/android/agoo/impl/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/android/agoo/impl/a$c$1;

    invoke-direct {v1, p0}, Lorg/android/agoo/impl/a$c$1;-><init>(Lorg/android/agoo/impl/a$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 872
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 844
    const-string v0, "ElectionService"

    const-string v1, "MessageConnection disConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void
.end method
