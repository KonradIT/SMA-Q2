.class public Lcn/smssdk/gui/SearchEngine;
.super Ljava/lang/Object;
.source "SearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/SearchEngine$SearchIndex;
    }
.end annotation


# static fields
.field private static final DB_FILE:Ljava/lang/String; = "smssdk_pydb"

.field private static hanzi2Pinyin:Ljava/util/HashMap;
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


# instance fields
.field private caseSensitive:Z

.field private index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/gui/SearchEngine$SearchIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcn/smssdk/gui/SearchEngine;->hanzi2Pinyin:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 18
    sput-object p0, Lcn/smssdk/gui/SearchEngine;->hanzi2Pinyin:Ljava/util/HashMap;

    return-void
.end method

.method public static prepare(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "afterPrepare"    # Ljava/lang/Runnable;

    .prologue
    .line 23
    new-instance v0, Lcn/smssdk/gui/SearchEngine$1;

    invoke-direct {v0, p0, p1}, Lcn/smssdk/gui/SearchEngine$1;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 52
    .local v0, "act":Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public match(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcn/smssdk/gui/SearchEngine;->index:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 81
    :cond_0
    return-object v0

    .line 76
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/SearchEngine;->index:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/smssdk/gui/SearchEngine$SearchIndex;

    .line 77
    .local v1, "si":Lcn/smssdk/gui/SearchEngine$SearchIndex;
    iget-boolean v3, p0, Lcn/smssdk/gui/SearchEngine;->caseSensitive:Z

    invoke-static {v1, p1, v3}, Lcn/smssdk/gui/SearchEngine$SearchIndex;->access$0(Lcn/smssdk/gui/SearchEngine$SearchIndex;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {v1}, Lcn/smssdk/gui/SearchEngine$SearchIndex;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCaseSensitive(Z)V
    .locals 0
    .param p1, "caseSensitive"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcn/smssdk/gui/SearchEngine;->caseSensitive:Z

    .line 61
    return-void
.end method

.method public setIndex(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "index":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/smssdk/gui/SearchEngine;->index:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    return-void

    .line 65
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "i":Ljava/lang/String;
    iget-object v2, p0, Lcn/smssdk/gui/SearchEngine;->index:Ljava/util/ArrayList;

    new-instance v3, Lcn/smssdk/gui/SearchEngine$SearchIndex;

    sget-object v4, Lcn/smssdk/gui/SearchEngine;->hanzi2Pinyin:Ljava/util/HashMap;

    invoke-direct {v3, v0, v4}, Lcn/smssdk/gui/SearchEngine$SearchIndex;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
