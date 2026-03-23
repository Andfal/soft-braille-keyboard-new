.class Lcom/nirenr/talkman/ReaderActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/androlua/LuaWebView$OnSourceSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ReaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/nirenr/talkman/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ReaderActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$c;->b:Lcom/nirenr/talkman/ReaderActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/ReaderActivity$c;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceSet(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$c;->b:Lcom/nirenr/talkman/ReaderActivity;

    new-instance v1, Lcom/nirenr/talkman/ReaderActivity$c$a;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/ReaderActivity$c$a;-><init>(Lcom/nirenr/talkman/ReaderActivity$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
