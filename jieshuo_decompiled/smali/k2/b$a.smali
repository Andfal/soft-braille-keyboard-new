.class Lk2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/b;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk2/b;


# direct methods
.method constructor <init>(Lk2/b;)V
    .locals 0

    iput-object p1, p0, Lk2/b$a;->a:Lk2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lk2/b$a;->a:Lk2/b;

    invoke-static {v0}, Lk2/b;->a(Lk2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/b$a;->a:Lk2/b;

    invoke-static {v0}, Lk2/b;->a(Lk2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    return-void
.end method
