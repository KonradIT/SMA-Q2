.class public final Lcom/qiniu/android/dns/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TK;>;"
        }
    .end annotation
.end field

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/qiniu/android/dns/util/LruCache;, "Lcom/qiniu/android/dns/util/LruCache<TK;TV;>;"
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/util/LruCache;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 18
    .local p0, "this":Lcom/qiniu/android/dns/util/LruCache;, "Lcom/qiniu/android/dns/util/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/util/LruCache;->list:Ljava/util/LinkedList;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/util/LruCache;->map:Ljava/util/HashMap;

    .line 21
    iput p1, p0, Lcom/qiniu/android/dns/util/LruCache;->size:I

    .line 22
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/qiniu/android/dns/util/LruCache;, "Lcom/qiniu/android/dns/util/LruCache<TK;TV;>;"
    iget-object v0, p0, Lcom/qiniu/android/dns/util/LruCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 49
    iget-object v0, p0, Lcom/qiniu/android/dns/util/LruCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    return-void
.end method

.method public delete(Ljava/lang/Object;)Lcom/qiniu/android/dns/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/qiniu/android/dns/util/LruCache;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/qiniu/android/dns/util/LruCache;, "Lcom/qiniu/android/dns/util/LruCache<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/qiniu/android/dns/util/LruCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/qiniu/android/dns/util/LruCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/qiniu/android/dns/util/LruCache;, "Lcom/qiniu/android/dns/util/LruCache<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/qiniu/android/dns/util/LruCache;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "v":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/qiniu/android/dns/util/LruCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcom/qiniu/android/dns/util/LruCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 44
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/qiniu/android/dns/util/LruCache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/qiniu/android/dns/util/LruCache;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/qiniu/android/dns/util/LruCache;, "Lcom/qiniu/android/dns/util/LruCache<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/qiniu/android/dns/util/LruCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/qiniu/android/dns/util/LruCache;->size:I

    if-ne v1, v2, :cond_0

    .line 26
    iget-object v1, p0, Lcom/qiniu/android/dns/util/LruCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "old":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/qiniu/android/dns/util/LruCache;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .end local v0    # "old":Ljava/lang/Object;, "TK;"
    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/dns/util/LruCache;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcom/qiniu/android/dns/util/LruCache;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 31
    return-object p0
.end method
