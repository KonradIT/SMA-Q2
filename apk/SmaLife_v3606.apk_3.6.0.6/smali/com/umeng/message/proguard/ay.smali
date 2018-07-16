.class public Lcom/umeng/message/proguard/ay;
.super Lcom/umeng/message/proguard/o$b;
.source "UTOriginalCustomHitBuilder.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/umeng/message/proguard/o$b;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    const-string v0, "_field_page"

    invoke-super {p0, v0, p1}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 17
    :cond_0
    const-string v0, "_field_event_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 19
    invoke-static {p3}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    const-string v0, "_field_arg1"

    invoke-super {p0, v0, p3}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 22
    :cond_1
    invoke-static {p4}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    const-string v0, "_field_arg2"

    invoke-super {p0, v0, p4}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 25
    :cond_2
    invoke-static {p5}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    const-string v0, "_field_arg3"

    invoke-super {p0, v0, p5}, Lcom/umeng/message/proguard/o$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/o$b;

    .line 28
    :cond_3
    invoke-super {p0, p6}, Lcom/umeng/message/proguard/o$b;->a(Ljava/util/Map;)Lcom/umeng/message/proguard/o$b;

    .line 30
    return-void
.end method
