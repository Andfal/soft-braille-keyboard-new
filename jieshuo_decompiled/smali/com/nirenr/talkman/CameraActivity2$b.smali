.class Lcom/nirenr/talkman/CameraActivity2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity2;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/CameraActivity2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity2$b;->a:Lcom/nirenr/talkman/CameraActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity2$b;->a:Lcom/nirenr/talkman/CameraActivity2;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
