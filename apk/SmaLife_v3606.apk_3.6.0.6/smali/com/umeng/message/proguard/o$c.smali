.class public Lcom/umeng/message/proguard/o$c;
.super Lcom/umeng/message/proguard/o$b;
.source "UTHitBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/umeng/message/proguard/o$b;-><init>()V

    .line 364
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    const-string v0, "_field_page"

    invoke-super {p0, v0, p1}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 367
    :cond_0
    const-string v0, "_field_event_id"

    const-string v1, "2001"

    invoke-super {p0, v0, v1}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 369
    const-string v0, "_field_arg3"

    const-string v1, "0"

    invoke-super {p0, v0, v1}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 370
    return-void
.end method


# virtual methods
.method public a(J)Lcom/umeng/message/proguard/o$c;
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 392
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 395
    :cond_0
    const-string v0, "_field_arg3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 396
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/message/proguard/o$c;
    .locals 1

    .prologue
    .line 378
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    const-string v0, "_field_arg1"

    invoke-super {p0, v0, p1}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 381
    :cond_0
    return-object p0
.end method
