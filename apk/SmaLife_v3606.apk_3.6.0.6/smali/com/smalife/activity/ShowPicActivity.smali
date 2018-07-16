.class public Lcom/smalife/activity/ShowPicActivity;
.super Landroid/app/Activity;
.source "ShowPicActivity.java"


# static fields
.field private static RESULT_LOAD_IMAGE:I


# instance fields
.field private ivPic:Landroid/widget/ImageView;

.field mWindowManager:Landroid/view/WindowManager;

.field private pic_url:Ljava/lang/String;

.field windowHight:I

.field windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/smalife/activity/ShowPicActivity;->RESULT_LOAD_IMAGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/activity/ShowPicActivity;->ivPic:Landroid/widget/ImageView;

    .line 20
    return-void
.end method


# virtual methods
.method public getPreviewDegree(Landroid/app/Activity;)I
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 96
    .local v1, "rotation":I
    const/4 v0, 0x0

    .line 98
    .local v0, "degree":I
    packed-switch v1, :pswitch_data_0

    .line 112
    :goto_0
    return v0

    .line 100
    :pswitch_0
    const/16 v0, 0x5a

    .line 101
    goto :goto_0

    .line 103
    :pswitch_1
    const/4 v0, 0x0

    .line 104
    goto :goto_0

    .line 106
    :pswitch_2
    const/16 v0, 0x10e

    .line 107
    goto :goto_0

    .line 109
    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    sget v0, Lcom/smalife/activity/ShowPicActivity;->RESULT_LOAD_IMAGE:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 58
    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, "selectedImage":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    .line 61
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/smalife/activity/ShowPicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 63
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    aget-object v0, v2, v10

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 65
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "picturePath":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 67
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    const-string v0, "image/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v8}, Lcom/smalife/activity/ShowPicActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "picturePath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ShowPicActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f0e01b3

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ShowPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/ShowPicActivity;->ivPic:Landroid/widget/ImageView;

    .line 35
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ShowPicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/smalife/activity/ShowPicActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 36
    iget-object v0, p0, Lcom/smalife/activity/ShowPicActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/smalife/activity/ShowPicActivity;->windowWidth:I

    .line 37
    iget-object v0, p0, Lcom/smalife/activity/ShowPicActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/smalife/activity/ShowPicActivity;->windowHight:I

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/smalife/activity/ShowPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "pic_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/ShowPicActivity;->pic_url:Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/smalife/activity/ShowPicActivity;->pic_url:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/smalife/activity/ShowPicActivity;->pic_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/smalife/activity/ShowPicActivity;->pic_url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 51
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0, p0}, Lcom/smalife/activity/ShowPicActivity;->getPreviewDegree(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 86
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/smalife/activity/ShowPicActivity;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
