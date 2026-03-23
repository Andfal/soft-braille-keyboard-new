.class Lcom/nirenr/talkman/util/b$h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b$h;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/b$h;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b$h;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$h$b;->a:Lcom/nirenr/talkman/util/b$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$h$b;->a:Lcom/nirenr/talkman/util/b$h;

    iget-object v0, v0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->q(Lcom/nirenr/talkman/util/b;)V

    return-void
.end method
