.class public final Lcom/igexin/getuiext/service/c;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/igexin/getuiext/service/c;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/igexin/getuiext/service/c;

    invoke-direct {v0}, Lcom/igexin/getuiext/service/c;-><init>()V

    sput-object v0, Lcom/igexin/getuiext/service/c;->c:Lcom/igexin/getuiext/service/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/c;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/c;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static a()Lcom/igexin/getuiext/service/c;
    .locals 1

    sget-object v0, Lcom/igexin/getuiext/service/c;->c:Lcom/igexin/getuiext/service/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/c;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/c;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/igexin/getuiext/data/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/igexin/getuiext/data/a/d;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/data/a/d;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
