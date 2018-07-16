.class public Lcom/umeng/message/proguard/aF;
.super Ljava/lang/Object;
.source "MtopResponse.java"


# static fields
.field public static final a:Ljava/lang/String; = "hasAvailableUpdate"

.field public static final b:Ljava/lang/String; = "newBaseList"

.field public static final c:Ljava/lang/String; = "updateInfo"

.field public static final d:Ljava/lang/String; = "info"

.field public static final e:Ljava/lang/String; = "name"

.field public static final f:Ljava/lang/String; = "type"

.field public static final g:Ljava/lang/String; = "size"

.field public static final h:Ljava/lang/String; = "url"

.field public static final i:Ljava/lang/String; = "version"


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/umeng/message/proguard/aF;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/umeng/message/proguard/aF;->j:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcom/umeng/message/proguard/aF;->k:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method public final b()Lcom/umeng/message/proguard/aG;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/message/proguard/aF;->k:Ljava/util/HashMap;

    const-string v1, "updateInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/aG;

    return-object v0
.end method
