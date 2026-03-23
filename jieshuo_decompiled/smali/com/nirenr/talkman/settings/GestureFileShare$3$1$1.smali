.class Lcom/nirenr/talkman/settings/GestureFileShare$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureFileShare$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/GestureFileShare$3$1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureFileShare$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureFileShare$3$1$1;->a:Lcom/nirenr/talkman/settings/GestureFileShare$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureFileShare$3$1$1;->a:Lcom/nirenr/talkman/settings/GestureFileShare$3$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/GestureFileShare$3$1;->a:Lcom/nirenr/talkman/settings/GestureFileShare$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/GestureFileShare$3;->b:Lcom/nirenr/talkman/settings/GestureFileShare;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/GestureFileShare;->f(Lcom/nirenr/talkman/settings/GestureFileShare;)V

    return-void
.end method
