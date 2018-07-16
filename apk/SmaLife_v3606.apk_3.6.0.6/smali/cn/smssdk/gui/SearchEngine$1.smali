.class Lcn/smssdk/gui/SearchEngine$1;
.super Ljava/lang/Object;
.source "SearchEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/SearchEngine;->prepare(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$afterPrepare:Ljava/lang/Runnable;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/SearchEngine$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/smssdk/gui/SearchEngine$1;->val$afterPrepare:Ljava/lang/Runnable;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 25
    const-string v8, "smssdk_pydb"

    monitor-enter v8

    .line 26
    :try_start_0
    invoke-static {}, Lcn/smssdk/gui/SearchEngine;->access$0()Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcn/smssdk/gui/SearchEngine;->access$0()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-gtz v7, :cond_1

    .line 28
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcn/smssdk/gui/SearchEngine$1;->val$context:Landroid/content/Context;

    const-string v9, "smssdk_pydb"

    invoke-static {v7, v9}, Lcom/mob/tools/utils/R;->getRawRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 29
    .local v5, "resId":I
    if-gtz v5, :cond_3

    .line 30
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Lcn/smssdk/gui/SearchEngine;->access$1(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .end local v5    # "resId":I
    :cond_1
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcn/smssdk/gui/SearchEngine$1;->val$afterPrepare:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 47
    iget-object v7, p0, Lcn/smssdk/gui/SearchEngine$1;->val$afterPrepare:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 25
    :cond_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    return-void

    .line 32
    .restart local v5    # "resId":I
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcn/smssdk/gui/SearchEngine$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 33
    .local v2, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 35
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 36
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "json":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 38
    new-instance v7, Lm/framework/utils/Hashon;

    invoke-direct {v7}, Lm/framework/utils/Hashon;-><init>()V

    invoke-virtual {v7, v4}, Lm/framework/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v7}, Lcn/smssdk/gui/SearchEngine;->access$1(Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 40
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "resId":I
    :catch_0
    move-exception v6

    .line 41
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Lcn/smssdk/gui/SearchEngine;->access$1(Ljava/util/HashMap;)V

    goto :goto_0

    .line 25
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7
.end method
