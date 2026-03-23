.class Lcom/nirenr/talkman/util/Music$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/Music;->m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/Music;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/Music;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/Music$b;->a:Lcom/nirenr/talkman/util/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->e()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
