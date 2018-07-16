.class public Lcom/igexin/a/a/d/e;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final i:Ljava/lang/String;

.field public static final z:J


# instance fields
.field private a:Z

.field public h:Ljava/lang/String;

.field final j:Lcom/igexin/a/a/d/i;

.field final k:Ljava/util/HashMap;

.field final l:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final m:Lcom/igexin/a/a/d/c;

.field final n:Ljava/util/concurrent/locks/ReentrantLock;

.field final o:Ljava/util/concurrent/locks/ReentrantLock;

.field p:Landroid/os/PowerManager;

.field q:Landroid/app/AlarmManager;

.field r:Landroid/content/Intent;

.field s:Landroid/app/PendingIntent;

.field t:Landroid/content/Intent;

.field u:Landroid/app/PendingIntent;

.field v:Landroid/content/Intent;

.field w:Landroid/app/PendingIntent;

.field x:Ljava/lang/String;

.field volatile y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/igexin/a/a/d/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/a/d/e;->i:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/a/a/d/e;->z:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->n:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->o:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/a/a/d/e;->a:Z

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->k:Ljava/util/HashMap;

    new-instance v0, Lcom/igexin/a/a/d/c;

    invoke-direct {v0, p0, p0}, Lcom/igexin/a/a/d/c;-><init>(Ljava/util/Comparator;Lcom/igexin/a/a/d/e;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->m:Lcom/igexin/a/a/d/c;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/igexin/a/a/d/i;

    invoke-direct {v0, p0}, Lcom/igexin/a/a/d/i;-><init>(Lcom/igexin/a/a/d/e;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->j:Lcom/igexin/a/a/d/i;

    sput-object p0, Lcom/igexin/a/a/d/d;->Q:Lcom/igexin/a/a/d/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/d/d;Lcom/igexin/a/a/d/d;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p1, Lcom/igexin/a/a/d/d;->M:I

    iget v3, p2, Lcom/igexin/a/a/d/d;->M:I

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_0
    iget-wide v4, p1, Lcom/igexin/a/a/d/d;->G:J

    iget-wide v6, p2, Lcom/igexin/a/a/d/d;->G:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    iget v0, p1, Lcom/igexin/a/a/d/d;->M:I

    iget v3, p2, Lcom/igexin/a/a/d/d;->M:I

    if-ge v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/igexin/a/a/d/d;->H:I

    iget v3, p2, Lcom/igexin/a/a/d/d;->H:I

    if-ge v0, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/igexin/a/a/d/d;->H:I

    iget v3, p2, Lcom/igexin/a/a/d/d;->H:I

    if-le v0, v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-wide v4, p1, Lcom/igexin/a/a/d/d;->G:J

    iget-wide v6, p2, Lcom/igexin/a/a/d/d;->G:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public final a(J)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/igexin/a/a/d/e;->y:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setalarm|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/a/a/d/e;->z:J

    add-long p1, v0, v2

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/d/e;->s:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->u:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->q:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/igexin/a/a/d/e;->s:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->q:Landroid/app/AlarmManager;

    sget-wide v2, Lcom/igexin/a/a/d/e;->z:J

    add-long/2addr v2, p1

    iget-object v1, p0, Lcom/igexin/a/a/d/e;->u:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x8000000

    iget-boolean v0, p0, Lcom/igexin/a/a/d/e;->a:Z

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->p:Landroid/os/PowerManager;

    iput-boolean v4, p0, Lcom/igexin/a/a/d/e;->y:Z

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->q:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/IntentFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmTaskSchedule."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmTaskScheduleBak."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmNioTaskSchedule."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->x:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/igexin/a/a/d/e;->x:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmTaskSchedule."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->r:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/igexin/a/a/d/e;->r:Landroid/content/Intent;

    invoke-static {p1, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->s:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmTaskScheduleBak."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->t:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/igexin/a/a/d/e;->t:Landroid/content/Intent;

    invoke-static {p1, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->u:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/a/a/d/e;->x:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->v:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/igexin/a/a/d/e;->v:Landroid/content/Intent;

    invoke-static {p1, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/e;->w:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->j:Lcom/igexin/a/a/d/i;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/i;->start()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iput-boolean v4, p0, Lcom/igexin/a/a/d/e;->a:Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/igexin/a/a/d/a/c;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/igexin/a/a/d/e;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/igexin/a/a/d/e;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lcom/igexin/a/a/d/a/c;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/igexin/a/a/d/e;->k:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/igexin/a/a/d/a/c;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final a(Lcom/igexin/a/a/d/a/f;Lcom/igexin/a/a/d/a/c;)Z
    .locals 2

    invoke-interface {p1}, Lcom/igexin/a/a/d/a/f;->b()I

    move-result v0

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_2

    if-gez v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/d/d;

    iget-boolean v1, v0, Lcom/igexin/a/a/d/d;->F:Z

    if-eqz v1, :cond_1

    invoke-interface {p2, v0, p0}, Lcom/igexin/a/a/d/a/c;->a(Lcom/igexin/a/a/d/d;Lcom/igexin/a/a/d/e;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/igexin/a/a/d/d;->c()V

    :cond_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-interface {p2, p1, p0}, Lcom/igexin/a/a/d/a/c;->a(Lcom/igexin/a/a/d/a/f;Lcom/igexin/a/a/d/e;)Z

    move-result v1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_3

    invoke-interface {p2, p1, p0}, Lcom/igexin/a/a/d/a/c;->a(Lcom/igexin/a/a/d/a/f;Lcom/igexin/a/a/d/e;)Z

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/igexin/a/a/d/d;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v1, p1, Lcom/igexin/a/a/d/d;->B:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/igexin/a/a/d/d;->x:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/igexin/a/a/d/e;->m:Lcom/igexin/a/a/d/c;

    if-eqz p2, :cond_3

    iget-object v0, v1, Lcom/igexin/a/a/d/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    :cond_3
    iput v0, p1, Lcom/igexin/a/a/d/d;->M:I

    invoke-virtual {v1, p1}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/igexin/a/a/d/d;ZZ)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v2, p1, Lcom/igexin/a/a/d/d;->y:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p2, :cond_5

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->d()V

    :try_start_0
    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->a_()V

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->s()V

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p1, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->c()V

    :cond_3
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p1, Lcom/igexin/a/a/d/d;->F:Z

    iput-object v0, p1, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->o()V

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->v()V

    invoke-virtual {p0, p1}, Lcom/igexin/a/a/d/e;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/igexin/a/a/d/e;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-boolean v1, p1, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->c()V

    :cond_4
    throw v0

    :cond_5
    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/igexin/a/a/d/e;->a(Lcom/igexin/a/a/d/d;Z)Z

    move-result v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/igexin/a/a/d/a/f;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "response Obj is not a TaskResult "

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p1, Lcom/igexin/a/a/d/a/f;

    invoke-interface {p1}, Lcom/igexin/a/a/d/a/f;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lcom/igexin/a/a/d/a/f;->a(Z)V

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(J)V
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setnioalarm|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/a/a/d/e;->z:J

    add-long p1, v0, v2

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/d/e;->w:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->q:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/igexin/a/a/d/e;->w:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/igexin/a/a/d/d;

    check-cast p2, Lcom/igexin/a/a/d/d;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/a/a/d/e;->a(Lcom/igexin/a/a/d/d;Lcom/igexin/a/a/d/d;)I

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->w:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->q:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/igexin/a/a/d/e;->w:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->j:Lcom/igexin/a/a/d/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->j:Lcom/igexin/a/a/d/i;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/i;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->j:Lcom/igexin/a/a/d/i;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/i;->interrupt()V

    :cond_0
    return-void
.end method

.method final h()V
    .locals 9

    const/high16 v8, -0x80000000

    :goto_0
    iget-object v0, p0, Lcom/igexin/a/a/d/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/d/a/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/igexin/a/a/d/a/f;->a(Z)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igexin/a/a/d/e;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/igexin/a/a/d/e;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/igexin/a/a/d/a/f;->k()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igexin/a/a/d/e;->k:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/a/a/d/a/c;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/igexin/a/a/d/a/c;->m()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v0, v1}, Lcom/igexin/a/a/d/e;->a(Lcom/igexin/a/a/d/a/f;Lcom/igexin/a/a/d/a/c;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_1
    move v2, v1

    :cond_0
    :goto_2
    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/igexin/a/a/d/a/f;->b()I

    move-result v1

    if-le v1, v8, :cond_1

    if-gez v1, :cond_1

    check-cast v0, Lcom/igexin/a/a/d/d;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/d;->c()V

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/igexin/a/a/d/e;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/a/a/d/a/c;

    invoke-interface {v1}, Lcom/igexin/a/a/d/a/c;->m()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/igexin/a/a/d/e;->a(Lcom/igexin/a/a/d/a/f;Lcom/igexin/a/a/d/a/c;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :catch_0
    move-exception v1

    if-nez v2, :cond_4

    invoke-interface {v0}, Lcom/igexin/a/a/d/a/f;->b()I

    move-result v1

    if-le v1, v8, :cond_4

    if-gez v1, :cond_4

    check-cast v0, Lcom/igexin/a/a/d/d;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/d;->c()V

    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    if-nez v2, :cond_5

    invoke-interface {v0}, Lcom/igexin/a/a/d/a/f;->b()I

    move-result v2

    if-le v2, v8, :cond_5

    if-gez v2, :cond_5

    check-cast v0, Lcom/igexin/a/a/d/d;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/d;->c()V

    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_6
    return-void

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/d/e;->y:Z

    const-string v0, "screenoff"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->m:Lcom/igexin/a/a/d/c;

    iget-object v0, v0, Lcom/igexin/a/a/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/d/e;->m:Lcom/igexin/a/a/d/c;

    iget-object v0, v0, Lcom/igexin/a/a/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/igexin/a/a/d/e;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/a/a/d/e;->y:Z

    const-string v0, "screenon"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmTaskSchedule."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmTaskScheduleBak."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receivealarm|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/igexin/a/a/d/e;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/a/a/d/e;->g()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/igexin/a/a/d/e;->x:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "receivenioalarm"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/igexin/a/a/b/a/a/e;->h()Lcom/igexin/a/a/b/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/a/a/b/a/a/e;->h()Lcom/igexin/a/a/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/e;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
