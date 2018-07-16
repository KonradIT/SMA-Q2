.class Lcom/smalife/activity/RankActivity$1;
.super Ljava/lang/Object;
.source "RankActivity.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RankActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/RankActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RankActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RankActivity$1;->this$0:Lcom/smalife/activity/RankActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$1;->this$0:Lcom/smalife/activity/RankActivity;

    invoke-static {v0}, Lcom/smalife/activity/RankActivity;->access$0(Lcom/smalife/activity/RankActivity;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smalife/activity/RankActivity$1;->this$0:Lcom/smalife/activity/RankActivity;

    invoke-static {v0}, Lcom/smalife/activity/RankActivity;->access$0(Lcom/smalife/activity/RankActivity;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
