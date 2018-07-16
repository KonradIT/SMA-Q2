.class Lcom/umeng/message/proguard/D$b;
.super Ljava/util/TimerTask;
.source "UTMCLogTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/proguard/D;


# direct methods
.method private constructor <init>(Lcom/umeng/message/proguard/D;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/umeng/message/proguard/D$b;->a:Lcom/umeng/message/proguard/D;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/message/proguard/D;Lcom/umeng/message/proguard/D$1;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/D$b;-><init>(Lcom/umeng/message/proguard/D;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/umeng/message/proguard/D$b;->a:Lcom/umeng/message/proguard/D;

    invoke-static {v0}, Lcom/umeng/message/proguard/D;->e(Lcom/umeng/message/proguard/D;)V

    .line 284
    return-void
.end method
